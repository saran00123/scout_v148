.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field private final synthetic f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$Jm0OeQ0IopM_KXSMoqCgenhI3pE;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->lambda$loadCanceled$2$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method
