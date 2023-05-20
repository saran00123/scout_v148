.class Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;
.super Ljava/lang/Object;
.source "RoundProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    .line 83
    monitor-enter p0

    .line 84
    :try_start_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    iget-object v0, v0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    iget-object v1, v1, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    iget v1, v1, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->setProgress(I)V

    .line 86
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v0
.end method
