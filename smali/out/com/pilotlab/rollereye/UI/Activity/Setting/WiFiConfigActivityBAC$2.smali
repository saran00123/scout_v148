.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$2;
.super Ljava/lang/Object;
.source "WiFiConfigActivityBAC.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initEvent()V
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

    .line 147
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_7

    .line 151
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->fullScreen()V

    :cond_7
    return-void
.end method
