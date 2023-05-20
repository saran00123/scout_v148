.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;
.super Ljava/lang/Object;
.source "ZoneActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveOval(FFFF)V
    .registers 11

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c7

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setX(D)V

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setY(D)V

    .line 154
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    float-to-double v4, p3

    invoke-virtual {p1, v4, v5}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setX(D)V

    .line 155
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setY(D)V

    .line 156
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    invoke-virtual {p1, v4, v5}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setX(D)V

    .line 157
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    float-to-double p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setY(D)V

    .line 158
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x3

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    invoke-virtual {p1, v2, v3}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setX(D)V

    .line 159
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    invoke-virtual {p1, p2, p3}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->setY(D)V

    :cond_c7
    return-void
.end method
