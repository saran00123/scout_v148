.class Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
