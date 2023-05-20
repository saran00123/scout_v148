.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    return-void
.end method
