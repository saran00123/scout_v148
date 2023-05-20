.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;
.super Landroid/os/Handler;
.source "AlexaLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2d

    .line 91
    :pswitch_6
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2d

    .line 88
    :pswitch_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2d

    .line 84
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x200
        :pswitch_1c
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method
