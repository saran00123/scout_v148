.class public Lio/noties/markwon/urlprocessor/UrlProcessorNoOp;
.super Ljava/lang/Object;
.source "UrlProcessorNoOp.java"

# interfaces
.implements Lio/noties/markwon/urlprocessor/UrlProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p1
.end method
