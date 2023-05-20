.class Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 106
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_13

    .line 107
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    goto :goto_71

    .line 108
    :cond_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_26

    .line 109
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    goto :goto_71

    .line 110
    :cond_26
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_39

    .line 111
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    goto :goto_71

    .line 112
    :cond_39
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_4c

    .line 113
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    goto :goto_71

    .line 114
    :cond_4c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_5f

    .line 115
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    goto :goto_71

    .line 116
    :cond_5f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_71

    .line 117
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V

    :cond_71
    :goto_71
    return-void
.end method
