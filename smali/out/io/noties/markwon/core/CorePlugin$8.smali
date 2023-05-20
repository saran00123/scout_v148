.class Lio/noties/markwon/core/CorePlugin$8;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->image(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Image;)V
    .registers 9
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/commonmark/node/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 274
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Image;

    invoke-interface {v0, v1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    if-nez v0, :cond_14

    .line 276
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void

    .line 280
    :cond_14
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v1

    .line 282
    invoke-interface {p1, p2}, Lio/noties/markwon/MarkwonVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 285
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 286
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v2

    const v3, 0xfffc

    invoke-virtual {v2, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 289
    :cond_2b
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v2

    .line 291
    invoke-virtual {p2}, Lorg/commonmark/node/Image;->getParent()Lorg/commonmark/node/Node;

    move-result-object v3

    .line 292
    instance-of v3, v3, Lorg/commonmark/node/Link;

    .line 295
    invoke-virtual {v2}, Lio/noties/markwon/MarkwonConfiguration;->urlProcessor()Lio/noties/markwon/urlprocessor/UrlProcessor;

    move-result-object v4

    .line 296
    invoke-virtual {p2}, Lorg/commonmark/node/Image;->getDestination()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lio/noties/markwon/urlprocessor/UrlProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 298
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v4

    .line 303
    sget-object v5, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    invoke-virtual {v5, v4, p2}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 304
    sget-object p2, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 305
    sget-object p2, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v3}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 307
    invoke-interface {v0, v2, v4}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lio/noties/markwon/MarkwonVisitor;->setSpans(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 269
    check-cast p2, Lorg/commonmark/node/Image;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$8;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Image;)V

    return-void
.end method
