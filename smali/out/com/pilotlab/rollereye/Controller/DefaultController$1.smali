.class Lcom/pilotlab/rollereye/Controller/DefaultController$1;
.super Ljava/lang/Object;
.source "DefaultController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/Controller/DefaultController;->setMidControlViewListener(Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Controller/DefaultController;

.field final synthetic val$rightControlViewListener:Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Controller/DefaultController;Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController$1;->this$0:Lcom/pilotlab/rollereye/Controller/DefaultController;

    iput-object p2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController$1;->val$rightControlViewListener:Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController$1;->val$rightControlViewListener:Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;

    invoke-interface {p1, p2}, Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;->onTouch(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
