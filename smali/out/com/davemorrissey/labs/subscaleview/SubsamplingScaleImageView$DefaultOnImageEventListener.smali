.class public Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$DefaultOnImageEventListener;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultOnImageEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onImageLoaded()V
    .registers 1

    return-void
.end method

.method public onPreviewLoadError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onPreviewReleased()V
    .registers 1

    return-void
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public onTileLoadError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method
