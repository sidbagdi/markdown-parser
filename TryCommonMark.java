import java.util.ArrayList;

import org.commonmark.node.*;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

class WordCountVisitor extends AbstractVisitor {
    int wordCount = 0;

    @Override
    public void visit(Text text) {
        // This is called for all Text nodes. Override other visit methods for other node types.

        // Count words (this is just an example, don't actually do it this way for various reasons).
        wordCount += text.getLiteral().split("\\W+").length;

        // Descend into children (could be omitted in this case because Text nodes don't have children).
        visitChildren(text);
    }
}

class LinkVisitor extends AbstractVisitor{
    int linkCount=0;
    ArrayList<String> links = new ArrayList<>();
    @Override
    public void visit(Link link){
        links.add(link.getDestination());

        // Descend into children (could be omitted in this case because Text nodes don't have children).
        visitChildren(link);

    }
}

class TryCommonMark{

    
    public static void main(String args[]){
        Parser parser = Parser.builder().build();
        Node document = parser.parse("This is *Sparta*");
        HtmlRenderer renderer = HtmlRenderer.builder().build();
        System.out.println(renderer.render(document));  // "<p>This is <em>Sparta</em></p>\n"


        Node node = parser.parse("Example\n=======\n\nSome more text");
        WordCountVisitor visitor = new WordCountVisitor();
        node.accept(visitor);
        System.out.println(visitor.wordCount);

        Node linkNode = parser.parse("[placeholder](link)");
        LinkVisitor linkVisitor = new LinkVisitor();
        linkNode.accept(linkVisitor);
        System.out.println(linkVisitor.links.get(0));
    }

    
}

