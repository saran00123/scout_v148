.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$18;
.super Lio/noties/markwon/html/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 296
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/TokeniserState$18;->ScriptDataEndTagName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/TokeniserState$18;->ScriptData:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, v0, v1}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;->access$400(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;Lio/noties/markwon/html/jsoup/parser/TokeniserState;Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    return-void
.end method
