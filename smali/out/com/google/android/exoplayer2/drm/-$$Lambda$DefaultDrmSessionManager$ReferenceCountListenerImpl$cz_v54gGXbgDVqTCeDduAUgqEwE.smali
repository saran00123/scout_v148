.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$cz_v54gGXbgDVqTCeDduAUgqEwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$cz_v54gGXbgDVqTCeDduAUgqEwE;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$cz_v54gGXbgDVqTCeDduAUgqEwE;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->lambda$onReferenceCountDecremented$0(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void
.end method
