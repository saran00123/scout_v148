.class Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoPlayerListener"
.end annotation


# instance fields
.field private mDidPrepare:Z

.field private mIsBuffering:Z

.field private mIsPrepareing:Z

.field final synthetic this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;


# direct methods
.method private constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .registers 2

    .line 335
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 337
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    .line 338
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V
    .registers 3

    .line 335
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3

    .line 385
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$700(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 8

    .line 342
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_1d

    if-eq p2, v2, :cond_c

    if-eq p2, v0, :cond_c

    goto :goto_1d

    .line 346
    :cond_c
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v3, 0x2be

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v4

    invoke-static {p1, v3, v4}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 347
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    .line 352
    :cond_1d
    :goto_1d
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    if-eqz p1, :cond_2d

    if-eq p2, v2, :cond_24

    goto :goto_2d

    .line 355
    :cond_24
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    .line 356
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 357
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    if-eq p2, p1, :cond_56

    const/4 v1, 0x2

    if-eq p2, v1, :cond_53

    const/4 v1, 0x3

    if-eq p2, v1, :cond_41

    if-eq p2, v2, :cond_5b

    if-eq p2, v0, :cond_3b

    goto :goto_5b

    .line 376
    :cond_3b
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$600(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    goto :goto_5b

    .line 370
    :cond_41
    iget-object p2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v0, 0x2bd

    invoke-static {p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-static {p2, v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$500(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 371
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    goto :goto_5b

    .line 367
    :cond_53
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    goto :goto_5b

    .line 364
    :cond_56
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6

    .line 391
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p4, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$802(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 392
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p4, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$902(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 393
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p4, p1, p2, v0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1000(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;IIII)V

    if-lez p3, :cond_19

    .line 395
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 p2, 0x2711

    invoke-static {p1, p2, p3}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    :cond_19
    return-void
.end method
