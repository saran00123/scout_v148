.class public final Lio/noties/markwon/html/jsoup/parser/Token$EOF;
.super Lio/noties/markwon/html/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EOF"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 333
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EOF:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Token;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    return-void
.end method


# virtual methods
.method public reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 1

    return-object p0
.end method
