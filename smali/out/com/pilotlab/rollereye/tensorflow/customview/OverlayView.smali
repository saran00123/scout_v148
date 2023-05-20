.class public Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;
    }
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .registers 4

    monitor-enter p0

    .line 42
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;

    .line 44
    invoke-interface {v1, p1}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;->drawCallback(Landroid/graphics/Canvas;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    goto :goto_a

    .line 46
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
