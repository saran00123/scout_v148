.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/PlayerMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iput-object p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;->f$1:Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;->f$1:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->lambda$sendMessageToTargetThread$1$ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-void
.end method
