.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_schedule_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field private center_title:Landroid/widget/TextView;

.field private count:I

.field private layout_left:Landroid/widget/LinearLayout;

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;

.field private right_btn:Landroid/widget/ImageButton;

.field private scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

.field private scheduleBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    const-string v0, "ScheduleActivity"

    .line 65
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    .line 70
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->deleteSchedule(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Ljava/util/List;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_empty_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->count:I

    return p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;II)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initData(II)V

    return-void
.end method

.method private deleteSchedule(I)V
    .registers 6

    .line 159
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 163
    :try_start_c
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string p1, "ids"

    .line 164
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 166
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 168
    :goto_25
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_39

    .line 169
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_39
    return-void
.end method

.method private initBroadcast()V
    .registers 3

    .line 301
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->PATROL_SAVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initData(II)V
    .registers 6

    .line 189
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "startId"

    .line 192
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v2, "patrol"

    .line 193
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "count"

    .line 194
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 196
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 198
    :goto_1d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_31

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance p2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_31
    return-void
.end method

.method private initSwipeRecycleView()V
    .registers 4

    const v0, 0x7f0a0154

    .line 105
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 107
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)V

    .line 123
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;)V

    .line 125
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)V

    .line 147
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMenuClickListener(Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    .line 150
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_rv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private sortSchedule(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;",
            ">;)V"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;Ljava/text/SimpleDateFormat;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private testData()V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x14

    if-ge v1, v2, :cond_c3

    .line 205
    new-instance v2, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-direct {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;-><init>()V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scout Route :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setName(Ljava/lang/String;)V

    .line 208
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 209
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    const/16 v7, 0xa

    const-string v8, ""

    if-ge v3, v7, :cond_4b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_4b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_53
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v7, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setStartTime(Ljava/lang/String;)V

    move v3, v0

    :goto_87
    const/4 v4, 0x7

    const/4 v5, 0x2

    if-ge v3, v4, :cond_ab

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 217
    :cond_ab
    invoke-virtual {v2, v8}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeat(Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    .line 219
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 221
    :cond_c3
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->sortSchedule(Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->updateUI()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "id"

    .line 237
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 238
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v1

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v1, v2, :cond_10d

    .line 240
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x1771

    if-ne p1, v2, :cond_10d

    .line 243
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "body"

    .line 244
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "status"

    .line 245
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10d

    const-string v1, "tasks"

    .line 246
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 247
    :goto_3d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_d0

    .line 248
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 249
    new-instance v4, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-direct {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;-><init>()V

    .line 250
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setId(I)V

    const-string v5, "name"

    .line 251
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setName(Ljava/lang/String;)V

    const-string v5, "type"

    .line 252
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setType(Ljava/lang/String;)V

    const-string v5, "startTime"

    .line 253
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    const-string v7, "HH:mm"

    invoke-static {v5, v6, v7}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->timeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setStartTime(Ljava/lang/String;)V

    const-string v5, "repeatType"

    .line 254
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeatType(I)V

    const-string v5, "repeatDays"

    .line 255
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->repeatDateTranslate(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeat(Ljava/lang/String;)V

    const-string v5, "expire"

    .line 256
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setExpire(I)V

    const-string v5, "active"

    .line 257
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    const-string v5, "param"

    .line 258
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 259
    new-instance v5, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    invoke-direct {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;-><init>()V

    const-string v6, "notice"

    .line 260
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setNotice(I)V

    const-string v6, "record"

    .line 261
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setRecord(I)V

    const-string v6, "route"

    .line 262
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setRoute(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setParamBean(Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;)V

    .line 264
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3d

    .line 266
    :cond_d0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->sortSchedule(Ljava/util/List;)V

    .line 267
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->count:I

    if-ne p1, v0, :cond_e9

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->count:I

    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initData(II)V

    goto :goto_10d

    .line 270
    :cond_e9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->updateUI()V

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_103

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_empty_ry:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_10d

    .line 275
    :cond_103
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_108
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_108} :catch_109

    goto :goto_10d

    :catch_109
    move-exception p1

    .line 282
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10d
    :goto_10d
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 91
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    .line 92
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 93
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04ed

    .line 94
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->right_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0210

    .line 95
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->center_title:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->right_btn:Landroid/widget/ImageButton;

    const v2, 0x7f0800fa

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0153

    .line 100
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->activity_schedule_empty_ry:Landroid/widget/RelativeLayout;

    .line 101
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initSwipeRecycleView()V

    return-void
.end method

.method public onCheckClick(Landroid/view/View;I)V
    .registers 8

    .line 361
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_EDIT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 362
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 364
    :try_start_7
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    .line 365
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getActive()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    .line 366
    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    goto :goto_1e

    .line 367
    :cond_1b
    invoke-virtual {p2, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    :goto_1e
    const-string v1, "id"

    .line 368
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 369
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 370
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "repeatType"

    .line 371
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeatType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "repeatDays"

    .line 372
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->repeatTranslate(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "startTime"

    .line 373
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HH:mm"

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->timeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expire"

    .line 374
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getExpire()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "active"

    .line 375
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getActive()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "notice"

    .line 377
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getNotice()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "record"

    .line 378
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRecord()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "route"

    .line 379
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "param"

    .line 380
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception p2

    .line 382
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 384
    :goto_a8
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_cf

    .line 385
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 386
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_cf
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_1d

    const v0, 0x7f0a04ed

    if-eq p1, v0, :cond_f

    goto :goto_20

    .line 315
    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 316
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 312
    :cond_1d
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->finish()V

    :goto_20
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 227
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 231
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;

    if-eqz v0, :cond_1b

    .line 232
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1b
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 352
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->scheduleBeanList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    .line 353
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "scheduleBean"

    .line 354
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 296
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 290
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0044

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 176
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 179
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 181
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initBroadcast()V

    .line 182
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 183
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    const/4 p1, 0x0

    .line 184
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->count:I

    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initData(II)V

    :cond_2e
    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initView()V

    .line 81
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initEvent()V

    return-void
.end method
