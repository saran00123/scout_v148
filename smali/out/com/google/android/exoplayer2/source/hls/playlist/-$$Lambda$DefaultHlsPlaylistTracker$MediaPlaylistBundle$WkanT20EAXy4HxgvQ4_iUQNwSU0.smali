.class public final synthetic Lcom/google/android/exoplayer2/source/hls/playlist/-$$Lambda$DefaultHlsPlaylistTracker$MediaPlaylistBundle$WkanT20EAXy4HxgvQ4_iUQNwSU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/-$$Lambda$DefaultHlsPlaylistTracker$MediaPlaylistBundle$WkanT20EAXy4HxgvQ4_iUQNwSU0;->f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/-$$Lambda$DefaultHlsPlaylistTracker$MediaPlaylistBundle$WkanT20EAXy4HxgvQ4_iUQNwSU0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/-$$Lambda$DefaultHlsPlaylistTracker$MediaPlaylistBundle$WkanT20EAXy4HxgvQ4_iUQNwSU0;->f$0:Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/-$$Lambda$DefaultHlsPlaylistTracker$MediaPlaylistBundle$WkanT20EAXy4HxgvQ4_iUQNwSU0;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lambda$loadPlaylistInternal$0$DefaultHlsPlaylistTracker$MediaPlaylistBundle(Landroid/net/Uri;)V

    return-void
.end method
