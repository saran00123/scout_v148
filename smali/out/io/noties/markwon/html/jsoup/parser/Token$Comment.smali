.class public final Lio/noties/markwon/html/jsoup/parser/Token$Comment;
.super Lio/noties/markwon/html/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation


# instance fields
.field bogus:Z

.field final data:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 277
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Comment:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Token;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->bogus:Z

    return-void
.end method


# virtual methods
.method getData()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 2

    .line 271
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->bogus:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
