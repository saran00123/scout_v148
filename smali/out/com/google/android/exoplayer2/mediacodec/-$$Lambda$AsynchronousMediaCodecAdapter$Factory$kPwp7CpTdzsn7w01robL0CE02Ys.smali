.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$kPwp7CpTdzsn7w01robL0CE02Ys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$kPwp7CpTdzsn7w01robL0CE02Ys;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$kPwp7CpTdzsn7w01robL0CE02Ys;->f$0:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$1(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
