import static org.junit.Assert.*;
import org.junit.*;
// import MarkdownParse.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.*;

public class MarkdownParseTest {

    
    //New comment
    @Test
    public void testfile_correct() throws IOException {
        Path fileName = Path.of("test-file.md");
        String content = Files.readString(fileName);
        Assert.assertEquals(MarkdownParse.getLinks(content), List.of("https://something.com", "some-thing.html"));
    }



    @Test
    public void testfile_infinite() throws IOException {
        Path fileName = Path.of("test-file-infinite.md");
        String content = Files.readString(fileName);
        assertEquals(MarkdownParse.getLinks(content), List.of("https://something.com", "some-thing.html"));
    }

    @Test
    public void testfile_image() throws IOException {
        Path fileName = Path.of("test-file-image.md");
        String content = Files.readString(fileName);
        assertEquals(MarkdownParse.getLinks(content), List.of("some-thing.html"));
    }

    @Test
    public void testfile_space() throws IOException {
        Path fileName = Path.of("test-file-space.md");
        String content = Files.readString(fileName);
        assertEquals(MarkdownParse.getLinks(content), List.of("https://something.com"));
    }
}