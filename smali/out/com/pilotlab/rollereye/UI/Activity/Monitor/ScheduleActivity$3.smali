.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->sortSchedule(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

.field final synthetic val$format1:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;Ljava/text/SimpleDateFormat;)V
    .registers 3

    .line 331
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;->val$format1:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x1

    .line 336
    :try_start_1
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;->val$format1:Ljava/text/SimpleDateFormat;

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 337
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;->val$format1:Ljava/text/SimpleDateFormat;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 338
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1
    :try_end_1d
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1d} :catch_22

    if-eqz p1, :cond_20

    return v0

    :cond_20
    const/4 p1, -0x1

    return p1

    :catch_22
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    return v0
.end method
