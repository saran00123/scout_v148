.class public final Lio/noties/markwon/html/jsoup/parser/Token$StartTag;
.super Lio/noties/markwon/html/jsoup/parser/Token$Tag;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 226
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    .line 227
    new-instance v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-void
.end method


# virtual methods
.method nameAttr(Ljava/lang/String;Lio/noties/markwon/html/jsoup/nodes/Attributes;)Lio/noties/markwon/html/jsoup/parser/Token$StartTag;
    .registers 3

    .line 239
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 241
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method public reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;
    .registers 2

    .line 232
    invoke-super {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    .line 233
    new-instance v0, Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public bridge synthetic reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 2

    .line 224
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 247
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_35

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
