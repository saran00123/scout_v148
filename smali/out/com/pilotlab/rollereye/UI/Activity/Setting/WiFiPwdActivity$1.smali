.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;
.super Ljava/lang/Object;
.source "WiFiPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->finish()V

    return-void
.end method
