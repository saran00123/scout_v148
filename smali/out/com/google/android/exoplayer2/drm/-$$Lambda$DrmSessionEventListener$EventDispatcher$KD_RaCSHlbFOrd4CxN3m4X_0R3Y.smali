.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$KD_RaCSHlbFOrd4CxN3m4X_0R3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$KD_RaCSHlbFOrd4CxN3m4X_0R3Y;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$KD_RaCSHlbFOrd4CxN3m4X_0R3Y;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$KD_RaCSHlbFOrd4CxN3m4X_0R3Y;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$KD_RaCSHlbFOrd4CxN3m4X_0R3Y;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmKeysRemoved$4$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void
.end method
