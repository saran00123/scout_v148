.class Lcom/taobao/agoo/BaseNotifyClickActivity$1;
.super Lcom/taobao/agoo/BaseNotifyClick;
.source "BaseNotifyClickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/agoo/BaseNotifyClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/agoo/BaseNotifyClickActivity;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/BaseNotifyClickActivity;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->this$0:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-direct {p0}, Lcom/taobao/agoo/BaseNotifyClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Intent;)V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->this$0:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->onMessage(Landroid/content/Intent;)V

    return-void
.end method
