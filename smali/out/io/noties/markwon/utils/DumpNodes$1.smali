.class Lio/noties/markwon/utils/DumpNodes$1;
.super Ljava/lang/Object;
.source "DumpNodes.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/utils/DumpNodes;->dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;

.field final synthetic val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

.field final synthetic val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;


# direct methods
.method constructor <init>(Lio/noties/markwon/utils/DumpNodes$Indent;Ljava/lang/StringBuilder;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)V
    .registers 4

    .line 39
    iput-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iput-object p2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 p2, 0x0

    .line 43
    aget-object p2, p3, p2

    check-cast p2, Lorg/commonmark/node/Node;

    .line 46
    iget-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iget-object v0, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Lio/noties/markwon/utils/DumpNodes$Indent;->appendTo(Ljava/lang/StringBuilder;)V

    .line 49
    iget-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$processor:Lio/noties/markwon/utils/DumpNodes$NodeProcessor;

    invoke-interface {v0, p2}, Lio/noties/markwon/utils/DumpNodes$NodeProcessor;->process(Lorg/commonmark/node/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    instance-of p3, p2, Lorg/commonmark/node/Block;

    if-eqz p3, :cond_40

    .line 52
    iget-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v0, " [\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p3, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-virtual {p3}, Lio/noties/markwon/utils/DumpNodes$Indent;->increment()V

    .line 54
    check-cast p1, Lorg/commonmark/node/Visitor;

    invoke-static {p1, p2}, Lio/noties/markwon/utils/DumpNodes;->access$200(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V

    .line 55
    iget-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-virtual {p1}, Lio/noties/markwon/utils/DumpNodes$Indent;->decrement()V

    .line 56
    iget-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$indent:Lio/noties/markwon/utils/DumpNodes$Indent;

    iget-object p2, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lio/noties/markwon/utils/DumpNodes$Indent;->appendTo(Ljava/lang/StringBuilder;)V

    .line 57
    iget-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 59
    :cond_40
    iget-object p1, p0, Lio/noties/markwon/utils/DumpNodes$1;->val$builder:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_47
    const/4 p1, 0x0

    return-object p1
.end method
