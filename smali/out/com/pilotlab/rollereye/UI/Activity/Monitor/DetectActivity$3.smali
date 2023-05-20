.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;
.super Ljava/lang/Object;
.source "DetectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_38

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-wide/16 v0, 0x1f4

    .line 133
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_55

    .line 145
    :cond_38
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :goto_55
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 150
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->setCat(Z)V

    .line 151
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->setDog(Z)V

    :cond_6f
    return-void
.end method
