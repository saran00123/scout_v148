.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

.field private final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$Qh5FNOjOggDDibjPxDs8w9x3Rr8;->f$2:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmSessionManagerError$2$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    return-void
.end method
