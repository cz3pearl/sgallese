

public class MVPTree
{
String mvpFile;
MVPTree(String filename) { mvpFile = filename; }
public native boolean create(Hash[] hashes);
public native Hash[] query(Hash hash, float radius, int maxResults);
public native boolean add(Hash[] hashes);
}

