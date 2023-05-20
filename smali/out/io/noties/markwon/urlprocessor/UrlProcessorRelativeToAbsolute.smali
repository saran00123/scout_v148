.class public Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;
.super Ljava/lang/Object;
.source "UrlProcessorRelativeToAbsolute.java"

# interfaces
.implements Lio/noties/markwon/urlprocessor/UrlProcessor;


# instance fields
.field private final base:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;->obtain(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    return-void
.end method

.method private static obtain(Ljava/lang/String;)Ljava/net/URL;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    if-eqz v0, :cond_12

    .line 26
    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_12
    :goto_12
    return-object p1
.end method
