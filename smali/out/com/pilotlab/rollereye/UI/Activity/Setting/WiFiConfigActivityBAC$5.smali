.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$5;
.super Ljava/lang/Object;
.source "WiFiConfigActivityBAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->finish()V

    return-void
.end method
