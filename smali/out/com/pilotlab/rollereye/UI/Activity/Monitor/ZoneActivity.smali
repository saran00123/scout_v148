.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "ZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_zone_rv:Lcom/pilotlab/rollereye/CustomerView/RectView;

.field private audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

.field private center_title:Landroid/widget/TextView;

.field private contourBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private isExit:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

.field private myHandler:Landroid/os/Handler;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private parentIntent:Landroid/content/Intent;

.field private player:Lcom/pilotlab/ffmpeg/ffmpeg;

.field private right_img_btn:Landroid/widget/ImageButton;

.field private surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private u:[B

.field private u_len:[I

.field private v:[B

.field private v_len:[I

.field private w:I

.field private y:[B

.field private y_len:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "ZoneActivity"

    .line 41
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x780

    .line 45
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->w:I

    const/16 v0, 0x438

    .line 46
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->h:I

    .line 47
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->w:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->h:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y:[B

    mul-int v2, v0, v1

    .line 48
    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u:[B

    mul-int/2addr v0, v1

    .line 49
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v:[B

    const/4 v0, 0x1

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y_len:[I

    .line 52
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u_len:[I

    .line 53
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v_len:[I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->isExit:Z

    return-void
.end method

.method private ScaleViewPort(II)V
    .registers 8

    .line 277
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const v0, 0x7f0a0461

    .line 278
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p2

    div-double/2addr v1, v3

    int-to-double p1, p1

    mul-double/2addr p1, v1

    double-to-int p1, p1

    mul-double/2addr v3, v1

    double-to-int p2, v3

    .line 281
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;II)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->ScaleViewPort(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y:[B

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y_len:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u_len:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v_len:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/rollereye/CustomerView/RectView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->activity_zone_rv:Lcom/pilotlab/rollereye/CustomerView/RectView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private initContour()V
    .registers 12

    .line 175
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->parentIntent:Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->parentIntent:Landroid/content/Intent;

    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->getZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->getAreas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->getContour()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_5e

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    .line 180
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;

    .line 181
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->activity_zone_rv:Lcom/pilotlab/rollereye/CustomerView/RectView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->getX()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;->getY()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/pilotlab/rollereye/CustomerView/RectView;->updateOval(DDDD)V

    :cond_5e
    return-void
.end method

.method private initP2P()V
    .registers 2

    .line 98
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-void
.end method

.method private setParam()V
    .registers 6

    .line 301
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 302
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 304
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "monitor"

    .line 305
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 308
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    :goto_2a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3c

    .line 311
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 314
    :cond_3c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->contourBeanList:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "contour"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 315
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->parentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 316
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->finish()V

    return-void
.end method

.method private startCamera()V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_25

    .line 209
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 212
    :cond_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_START:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_25
    return-void
.end method

.method private stopCamera()V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_10

    .line 221
    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_STOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 242
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_1f

    .line 244
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "id"

    .line 246
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y:[B

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->y_len:[I

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u:[B

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->u_len:[I

    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v:[B

    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->v_len:[I

    invoke-virtual/range {v0 .. v8}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3d

    const/4 p1, 0x1

    .line 262
    new-array v0, p1, [I

    .line 263
    new-array v1, p1, [I

    .line 264
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v2, v0, v1}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 265
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 266
    iput p1, v2, Landroid/os/Message;->what:I

    const/4 p1, 0x0

    .line 267
    aget v0, v0, p1

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 268
    aget p1, v1, p1

    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    :cond_3d
    if-ltz p1, :cond_45

    .line 272
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_45
    :goto_45
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->right_img_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->activity_zone_rv:Lcom/pilotlab/rollereye/CustomerView/RectView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/RectView;->setOvalChangeListener(Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    const v0, 0x7f0a055a

    .line 102
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    const v0, 0x7f0a0448

    .line 104
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f0

    .line 105
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->right_img_btn:Landroid/widget/ImageButton;

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->right_img_btn:Landroid/widget/ImageButton;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->right_img_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0210

    .line 109
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->center_title:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->center_title:Landroid/widget/TextView;

    const v2, 0x7f110001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->center_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a01bc

    .line 113
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/RectView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->activity_zone_rv:Lcom/pilotlab/rollereye/CustomerView/RectView;

    .line 115
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 117
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a04f0

    if-eq p1, v0, :cond_f

    goto :goto_16

    .line 295
    :cond_f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->setParam()V

    goto :goto_16

    .line 292
    :cond_13
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->finish()V

    :goto_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 167
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 228
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->isExit:Z

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->release()V

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    .line 235
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->stopCamera()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 188
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->fullScreen()V

    .line 191
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->startCamera()V

    .line 192
    new-instance v0, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 194
    new-instance v0, Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->prepare()Z

    .line 196
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 197
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_36
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->isExit:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0055

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 171
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initContour()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initView()V

    .line 93
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initEvent()V

    .line 94
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initP2P()V

    return-void
.end method
