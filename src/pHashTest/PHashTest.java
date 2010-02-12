package pHashTest;

import processing.core.*;
import java.io.*;

public class PHashTest extends PApplet
{
		native static VideoHash videoHash(String file);
		native static AudioHash audioHash(String file);
		native static DCTImageHash dctImageHash(String file);
		native static MHImageHash mhImageHash(String file);
		native static TextHash textHash(String file);
		native static double imageDistance(ImageHash hash1, ImageHash hash2);
		native static double audioDistance(AudioHash hash1, AudioHash hash2);
		native static double videoDistance(VideoHash hash1, VideoHash hash2, int threshold);
		native static int textDistance(TextHash txtHash1, TextHash txtHash2);
		private native static void pHashInit();
		private native static void cleanup();


		


		public static MHImageHash[] getMHImageHashes(String d)
		{
			File dir = new File(d);
			MHImageHash[] hashes = null;
			if(dir.isDirectory())
			{
				File[] files = dir.listFiles();
				hashes = new MHImageHash[files.length];
				for(int i = 0; i < files.length; ++i)
				{
					MHImageHash mh = mhImageHash(files[i].toString());
					if(mh != null)
						hashes[i] = mh;
				}	

			}
			return hashes;

		}
	
	public void setup(){
		
		System.loadLibrary("pHash-jni");
		pHashInit();
		MHImageHash imHash = mhImageHash("cc.jpg");
		MHImageHash imHash2 = mhImageHash("c1.jpg");
//		System.out.println("File 1: " + imHash.filename);
//		System.out.println("File 2: " + imHash2.filename);
//
//		System.out.println(myPhash.imageDistance(imHash,imHash2));
		
		
		PHashTest.cleanup();

	}
	


}