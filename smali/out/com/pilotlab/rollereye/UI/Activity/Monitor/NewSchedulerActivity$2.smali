.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$2;
.super Ljava/lang/Object;
.source "NewSchedulerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
