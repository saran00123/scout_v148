.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$1;
.super Ljava/lang/Object;
.source "CloudPreViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    return-void
.end method
