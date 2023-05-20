.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$2;
.super Ljava/lang/Object;
.source "WiFiSwitchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_7

    .line 111
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->fullScreen()V

    :cond_7
    return-void
.end method
