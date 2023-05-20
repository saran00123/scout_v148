.class synthetic Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;
.super Ljava/lang/Object;
.source "MarkwonHtmlParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/MarkwonHtmlParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 149
    invoke-static {}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->values()[Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;->$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I

    :try_start_9
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;->$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;->$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EndTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;->$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Character:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
