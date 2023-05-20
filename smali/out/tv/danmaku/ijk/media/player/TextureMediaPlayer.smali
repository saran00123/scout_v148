.class public Ltv/danmaku/ijk/media/player/TextureMediaPlayer;
.super Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
.source "TextureMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 93
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .registers 1

    .line 57
    invoke-super {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->release()V

    .line 58
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    return-void
.end method

.method public releaseSurfaceTexture()V
    .registers 3

    .line 36
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_12

    .line 37
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    if-eqz v1, :cond_c

    .line 38
    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_f

    .line 40
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_f
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_12
    return-void
.end method

.method public reset()V
    .registers 1

    .line 51
    invoke-super {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->reset()V

    .line 52
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 63
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_7

    .line 64
    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_7
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 69
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_7

    .line 70
    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    :cond_7
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 79
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_5

    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    .line 83
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    .line 85
    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    goto :goto_19

    .line 87
    :cond_11
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-super {p0, v0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    :goto_19
    return-void
.end method

.method public setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .registers 2

    .line 98
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    return-void
.end method
