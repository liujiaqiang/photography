package com.stardream.project.photography.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;

import com.stardream.project.photography.dao.SolrDao;
import com.stardream.project.photography.domain.News;

public class SolrDaoImpl implements SolrDao {
	
	private String solrUrl;
	
	public SolrServer getSolrServer() {
		HttpSolrServer server=new HttpSolrServer(solrUrl);
		server.setConnectionTimeout(30000);
		return server;
	}
	
	@Override
	public List<News> listNews(int start, int pageSize, int newscategory,
			int isShow) {
		SolrQuery query=new SolrQuery();
		query.setQuery("newscategory:"+newscategory);
		query.addField("title");
		query.addField("id");
		query.setStart(start);
		query.setRows(pageSize);
		List<News> news=new ArrayList<News>();
		QueryResponse response=null;
		try {
			response=getSolrServer().query(query);
			SolrDocumentList docs=response.getResults();
			for (int i = 0; i < docs.size(); i++) {
				News n=new News();
				if(docs.get(i).getFieldValue("title")!=null){
					n.setTitle(docs.get(i).getFieldValue("title").toString());
				}
				if(docs.get(i).getFieldValue("id")!=null){
					n.setId(docs.get(i).getFieldValue("id").toString());
				}
				news.add(n);
			}
		} catch (SolrServerException e) {
			e.printStackTrace();
		}
		return news;
	}

	public String getSolrUrl() {
		return solrUrl;
	}

	public void setSolrUrl(String solrUrl) {
		this.solrUrl = solrUrl;
	}

	@Override
	public News getNewsById(String id) {
		SolrQuery query=new SolrQuery();
		query.setQuery("id:"+id);
		query.addField("title");
		query.addField("summary");
		query.addField("premiereDate");
		query.addField("content");
		QueryResponse response=null;
		News news=new News();
		try {
			response=getSolrServer().query(query);
			SolrDocumentList docs=response.getResults();
			for (int i = 0; i < docs.size(); i++) {
				if(docs.get(0).getFieldValue("title")!=null){
					news.setTitle(docs.get(i).getFieldValue("title").toString());
				}
				if(docs.get(0).getFieldValue("summary")!=null){
					news.setSummary(docs.get(i).getFieldValue("summary").toString());
				}
				if(docs.get(0).getFieldValue("content")!=null){
					news.setContent(docs.get(i).getFieldValue("content").toString());
				}
				if(docs.get(0).getFieldValue("premiereDate")!=null){
					news.setPremiereDate(Long.parseLong(docs.get(i).getFieldValue("premiereDate").toString()));
				}
			}
		} catch (SolrServerException e) {
			e.printStackTrace();
		}
		return news;
	}

}
