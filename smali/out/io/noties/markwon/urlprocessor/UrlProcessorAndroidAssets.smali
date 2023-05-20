.class public Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;
.super Ljava/lang/Object;
.source "UrlProcessorAndroidAssets.java"

# interfaces
.implements Lio/noties/markwon/urlprocessor/UrlProcessor;


# static fields
.field static final BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final MOCK:Ljava/lang/String; = "https://android.asset/"


# instance fields
.field private final assetsProcessor:Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;

.field private final processor:Lio/noties/markwon/urlprocessor/UrlProcessor;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;-><init>(Lio/noties/markwon/urlprocessor/UrlProcessor;)V

    return-void
.end method

.method public constructor <init>(Lio/noties/markwon/urlprocessor/UrlProcessor;)V
    .registers 4
    .param p1    # Lio/noties/markwon/urlprocessor/UrlProcessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;

    const-string v1, "https://android.asset/"

    invoke-direct {v0, v1}, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;->assetsProcessor:Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;

    .line 30
    iput-object p1, p0, Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;->processor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    return-void
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

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 39
    iget-object v0, p0, Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;->assetsProcessor:Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;

    invoke-virtual {v0, p1}, Lio/noties/markwon/urlprocessor/UrlProcessorRelativeToAbsolute;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://android.asset/"

    const-string v1, "file:///android_asset/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 41
    :cond_1d
    iget-object v0, p0, Lio/noties/markwon/urlprocessor/UrlProcessorAndroidAssets;->processor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    if-eqz v0, :cond_25

    .line 42
    invoke-interface {v0, p1}, Lio/noties/markwon/urlprocessor/UrlProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_25
    :goto_25
    return-object p1
.end method
