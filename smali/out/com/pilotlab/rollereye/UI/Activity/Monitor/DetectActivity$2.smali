.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;
.super Ljava/lang/Object;
.source "DetectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 116
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 117
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->setPerson(Z)V

    :cond_11
    return-void
.end method
