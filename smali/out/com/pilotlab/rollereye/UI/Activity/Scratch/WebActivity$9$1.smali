.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 632
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
