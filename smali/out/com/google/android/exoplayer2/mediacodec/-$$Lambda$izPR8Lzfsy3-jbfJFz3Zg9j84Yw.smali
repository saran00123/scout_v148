.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$izPR8Lzfsy3-jbfJFz3Zg9j84Yw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$izPR8Lzfsy3-jbfJFz3Zg9j84Yw;->f$0:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$izPR8Lzfsy3-jbfJFz3Zg9j84Yw;->f$0:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method
