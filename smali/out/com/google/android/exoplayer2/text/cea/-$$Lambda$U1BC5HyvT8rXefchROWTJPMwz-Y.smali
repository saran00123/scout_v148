.class public final synthetic Lcom/google/android/exoplayer2/text/cea/-$$Lambda$U1BC5HyvT8rXefchROWTJPMwz-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/-$$Lambda$U1BC5HyvT8rXefchROWTJPMwz-Y;->f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/-$$Lambda$U1BC5HyvT8rXefchROWTJPMwz-Y;->f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method