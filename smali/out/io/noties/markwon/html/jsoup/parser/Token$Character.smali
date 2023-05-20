.class public Lio/noties/markwon/html/jsoup/parser/Token$Character;
.super Lio/noties/markwon/html/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Character"
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 294
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Character:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Token;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    return-void
.end method


# virtual methods
.method data(Ljava/lang/String;)Lio/noties/markwon/html/jsoup/parser/Token$Character;
    .registers 2

    .line 304
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object v0
.end method

.method public reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 2

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 314
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
