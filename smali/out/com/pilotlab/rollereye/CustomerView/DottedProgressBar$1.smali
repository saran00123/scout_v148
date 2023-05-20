.class Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;
.super Ljava/lang/Object;
.source "DottedProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$000(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 42
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$100(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v2}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$000(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$102(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;I)I

    .line 43
    :cond_1a
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->invalidate()V

    .line 44
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$400(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$200(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-static {v2}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->access$300(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
