.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;
.super Ljava/lang/Object;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackInfo"
.end annotation


# instance fields
.field public final groupIndex:I

.field public final rendererIndex:I

.field public final selected:Z

.field public final trackIndex:I

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Z)V
    .registers 6

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->rendererIndex:I

    .line 2011
    iput p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->groupIndex:I

    .line 2012
    iput p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->trackIndex:I

    .line 2013
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->trackName:Ljava/lang/String;

    .line 2014
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->selected:Z

    return-void
.end method
