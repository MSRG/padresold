package ca.utoronto.msrg.padres.broker.topk.count;

import java.util.HashMap;
import java.util.List;

import ca.utoronto.msrg.padres.broker.router.Router;
import ca.utoronto.msrg.padres.broker.topk.TopkInfo;
import ca.utoronto.msrg.padres.common.message.MessageDestination;

public class BufferedDesynchronizedChunkTopkEngine extends
		DesynchronizedChunkTopkEngine {

	private HashMap<String,List<MessageDestination>> sentDestinations;
	
	public BufferedDesynchronizedChunkTopkEngine(Router router, TopkInfo info) {
		super(router, info);
		sentDestinations = new HashMap<String,List<MessageDestination>>();
	}
	
	

}
