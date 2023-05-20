.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$2;
.super Ljava/lang/Object;
.source "CloudOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
