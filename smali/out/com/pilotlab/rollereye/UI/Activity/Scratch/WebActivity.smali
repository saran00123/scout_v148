.class public Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private MAX_DATA_BUFF:I

.field private TAG:Ljava/lang/String;

.field private activity_web_container:Landroid/widget/RelativeLayout;

.field private activity_web_preview:Landroid/widget/TextView;

.field private activity_web_preview_console:Landroid/widget/TextView;

.field private activity_web_preview_layout:Landroid/widget/LinearLayout;

.field private activity_web_surface_enlarge:Landroid/widget/ImageButton;

.field private activity_web_surface_shrink:Landroid/widget/ImageButton;

.field private activity_web_surface_videoView:Landroid/widget/FrameLayout;

.field private activity_web_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private activity_web_surface_view_bg:Landroid/widget/ImageView;

.field private activity_web_webview:Landroid/webkit/WebView;

.field private checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private consoleNeedRefresh:Z

.field private countCameraStatus:I

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private fileName:Ljava/lang/String;

.field private h:I

.field index_bframe:J

.field index_iframe:J

.field private isExit:Z

.field private isShowVideo:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private myHandler:Landroid/os/Handler;

.field private newFile:Ljava/io/File;

.field private player:Lcom/pilotlab/ffmpeg/ffmpeg;

.field private saveCodeText:Ljava/lang/String;

.field private shrink_h:I

.field private shrink_w:I

.field private text_oldScrollY:I

.field private top_scratch_preview:Landroid/widget/Button;

.field private top_scratch_pro:Landroid/widget/Button;

.field private top_scratch_run:Landroid/widget/Button;

.field private top_scratch_save:Landroid/widget/Button;

.field private top_scratch_video:Landroid/widget/ImageButton;

.field private type:Ljava/lang/String;

.field private u:[B

.field private u_len:[I

.field private v:[B

.field private v_len:[I

.field private w:I

.field private y:[B

.field private y_len:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->type:Ljava/lang/String;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isExit:Z

    .line 98
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeText:Ljava/lang/String;

    const-string v2, "WebActivity"

    .line 99
    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->fileName:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->countCameraStatus:I

    const-wide/16 v2, 0x0

    .line 109
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_iframe:J

    .line 110
    iput-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_bframe:J

    const/16 v0, 0x200

    .line 112
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->MAX_DATA_BUFF:I

    const/16 v0, 0x800

    .line 114
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->w:I

    const/16 v0, 0x47e

    .line 115
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->h:I

    .line 116
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->h:I

    mul-int v3, v0, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y:[B

    mul-int v3, v0, v2

    .line 117
    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u:[B

    mul-int/2addr v0, v2

    .line 118
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v:[B

    const/4 v0, 0x1

    .line 120
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y_len:[I

    .line 121
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u_len:[I

    .line 122
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v_len:[I

    .line 127
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isShowVideo:Z

    .line 133
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->consoleNeedRefresh:Z

    return-void
.end method

.method private ScaleViewPort(II)V
    .registers 10

    const/high16 v0, 0x43960000    # 300.0f

    .line 923
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 926
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {v4, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    const v4, 0x7f0a01af

    .line 927
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 928
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 929
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 930
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -Height:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "neww:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -newh:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;II)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->ScaleViewPort(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isShowVideo:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getCodeRep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isShowVideo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeRep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->selectShow(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->playRep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/TextView;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->consoleNeedRefresh:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/Button;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->resetHighLight()V

    return-void
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->countCameraStatus:I

    return p0
.end method

.method static synthetic access$2508(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)I
    .registers 3

    .line 83
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->countCameraStatus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->countCameraStatus:I

    return v0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->startCamera()V

    return-void
.end method

.method static synthetic access$2700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/io/File;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->newFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y:[B

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->stopScratch()V

    return-void
.end method

.method static synthetic access$3500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->back()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y_len:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u_len:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[B
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)[I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v_len:[I

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method private back()V
    .registers 4

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isExit:Z

    const-string v0, "saveCodeReq"

    const/16 v1, 0x101

    const/4 v2, 0x0

    .line 1018
    invoke-virtual {p0, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    return-void
.end method

.method private checkStauts()V
    .registers 6

    .line 436
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x5dc

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkWiFiDirect()V
    .registers 6

    .line 418
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_39

    .line 419
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 420
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "userID"

    .line 422
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    .line 424
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 426
    :goto_25
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_39

    .line 427
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_39
    return-void
.end method

.method private destroyWebView()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    .line 281
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 283
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    const-string v2, "Native"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 285
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 287
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    :cond_2d
    return-void
.end method

.method private dialogChoice(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 840
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11024f

    .line 841
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 842
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 843
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 844
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 845
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 846
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3b

    .line 847
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 848
    :cond_3b
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 849
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 851
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$14;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 859
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p2, 0x7f11003e

    .line 860
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;

    invoke-direct {v1, p0, p1, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 878
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$16;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 884
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private enlarge()V
    .registers 4

    .line 1041
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_enlarge:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a01af

    .line 1042
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1043
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->shrink_w:I

    .line 1044
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->shrink_h:I

    const/4 v2, -0x1

    .line 1045
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1046
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x3

    .line 1047
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1048
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a01b0

    .line 1050
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1051
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1052
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1053
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_shrink:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private getCodeRep(Ljava/lang/String;)V
    .registers 3

    .line 828
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private highLightBlock(Ljava/lang/String;)V
    .registers 4

    .line 740
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "blockid"

    .line 742
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 744
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_f
    const/16 p1, 0x106

    const-string v1, "resetStepPro"

    .line 746
    invoke-virtual {p0, v1, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    return-void
.end method

.method private initHandler()V
    .registers 2

    .line 170
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method private initWebView()V
    .registers 4

    .line 499
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    .line 501
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 507
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, 0x1

    .line 510
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 512
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 514
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/www/main.html"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 516
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    const-string v1, "Native"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 560
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private playRep(Ljava/lang/String;)V
    .registers 9

    .line 674
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    const v1, 0x7f110015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->consoleNeedRefresh:Z

    .line 677
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run the scratch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 681
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v1

    if-eq v1, v0, :cond_9a

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b8

    .line 683
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->MAX_DATA_BUFF:I

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->stringSpilt(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 685
    :goto_7c
    array-length v3, p1

    if-ge v2, v3, :cond_91

    .line 686
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_89

    .line 687
    aget-object v3, p1, v2

    invoke-direct {p0, v3, v2, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->runScratchScript(Ljava/lang/String;II)V

    goto :goto_8e

    .line 688
    :cond_89
    aget-object v3, p1, v2

    invoke-direct {p0, v3, v2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->runScratchScript(Ljava/lang/String;II)V

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 690
    :cond_91
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 691
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->reCheckStatus()V

    goto :goto_b8

    :cond_9a
    const p1, 0x7f11024a

    .line 694
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$10;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_b8
    :goto_b8
    return-void
.end method

.method private reCheckStatus()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_c

    .line 326
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 327
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getConnectStatus()V

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_16

    .line 330
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 331
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkStauts()V

    :cond_16
    return-void
.end method

.method private refreshLogView()V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 164
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_20

    .line 165
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_20
    return-void
.end method

.method private resetHighLight()V
    .registers 4

    const-string v0, "resetStepPro"

    const/16 v1, 0x107

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p0, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    return-void
.end method

.method private runScratch()V
    .registers 4

    const-string v0, "getCodePro"

    const/16 v1, 0x105

    const/4 v2, 0x0

    .line 990
    invoke-virtual {p0, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 991
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    const-string v1, "run the scratch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runScratchScript(Ljava/lang/String;II)V
    .registers 8

    .line 707
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SEND_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 708
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "language"

    const-string v3, "python"

    .line 710
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    .line 711
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "encode"

    const-string v2, "text"

    .line 712
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "segment"

    .line 713
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "last"

    .line 714
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 715
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 717
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 720
    :goto_30
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_4d

    .line 723
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance p2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget p3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_4d
    return-void
.end method

.method private saveCodeRep(Ljava/lang/String;)V
    .registers 10

    .line 777
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isExit:Z

    if-eqz v0, :cond_41

    if-eqz p1, :cond_6c

    .line 778
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 779
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const v0, 0x7f110255

    .line 780
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;

    invoke-direct {v4, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    const p1, 0x7f11003a

    .line 787
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$12;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v7, 0x1

    move-object v1, p0

    .line 780
    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 793
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_6c

    .line 794
    :cond_3d
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->finish()V

    goto :goto_6c

    :cond_41
    if-eqz p1, :cond_4e

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4e

    .line 798
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveFile(Ljava/lang/String;)V

    .line 799
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeText:Ljava/lang/String;

    :cond_4e
    const p1, 0x7f110254

    .line 801
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$13;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 806
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private saveFile(Ljava/lang/String;)V
    .registers 5

    .line 812
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->newFile:Ljava/io/File;

    if-nez v0, :cond_32

    .line 813
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getScratchPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pilotlab/rollereye/Common/CommonConstant;->SCRATCH_DEFAULT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".scout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->newFile:Ljava/io/File;

    .line 817
    :cond_32
    :try_start_32
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->newFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 818
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p1

    .line 821
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 823
    :goto_45
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->SCRATCH_CHANGE:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private selectShow(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 12

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 754
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4a

    const/4 v4, 0x0

    .line 758
    :try_start_11
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v5

    .line 760
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 762
    :goto_20
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_47

    .line 763
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_47

    .line 764
    aget-object v6, v4, v1

    const-string v7, "value"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 765
    aget-object v7, v4, v6

    const-string v8, "key"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    aget-object v6, v4, v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 767
    aget-object v3, v4, v1

    .line 769
    :cond_44
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 772
    :cond_4a
    invoke-direct {p0, v0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private shrink()V
    .registers 5

    .line 1024
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_shrink:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a01af

    .line 1025
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1026
    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->shrink_w:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1027
    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->shrink_h:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x3

    const v3, 0x7f0a059f

    .line 1028
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1029
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a01b0

    .line 1031
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1032
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1033
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1034
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_enlarge:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private startCamera()V
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 484
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_START:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private stopCamera()V
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_12

    .line 493
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->IOTYPE_USER_IPCAM_STOP:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_12
    return-void
.end method

.method private stopProgram()V
    .registers 9

    .line 997
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110064

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const v0, 0x7f110256

    .line 998
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$17;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$17;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const v0, 0x7f11003a

    .line 1005
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$18;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$18;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v7, 0x1

    move-object v1, p0

    .line 998
    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 1013
    :cond_40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->back()V

    return-void
.end method

.method private stopScratch()V
    .registers 6

    .line 727
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->STOP_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 728
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 729
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 731
    :cond_17
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->resetHighLight()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 337
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V

    .line 338
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_10

    goto :goto_1f

    .line 340
    :cond_10
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_1f

    .line 341
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkWiFiDirect()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 15
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 350
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_108

    .line 352
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 353
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 354
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_23} :catch_104

    const/16 v1, 0x3e9

    const v2, 0x7f11003e

    const-string v3, "body"

    if-ne p1, v1, :cond_70

    .line 356
    :try_start_2c
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 359
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    :cond_45
    const p1, 0x7f11034c

    .line 362
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const p1, 0x7f110007

    .line 370
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$4;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v9, 0x0

    move-object v3, p0

    .line 362
    invoke-virtual/range {v3 .. v9}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 376
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_6e} :catch_104

    goto/16 :goto_108

    :cond_70
    const/16 v1, 0xfa3

    const-string v4, "\n"

    const-string v5, "msg"

    const-string v6, "status"

    if-ne p1, v1, :cond_b8

    .line 379
    :try_start_7a
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 380
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    .line 381
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 383
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 384
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->consoleNeedRefresh:Z

    if-eqz p1, :cond_a3

    .line 385
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->refreshLogView()V

    .line 387
    :cond_a3
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$5;

    invoke-direct {v9, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_108

    :cond_b8
    const/16 v1, 0xfa4

    if-ne p1, v1, :cond_ce

    .line 395
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 396
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    .line 397
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->highLightBlock(Ljava/lang/String;)V

    goto :goto_108

    :cond_ce
    const/16 v1, 0xfa5

    if-ne p1, v1, :cond_108

    .line 401
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 402
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    const-string v0, "type"

    .line 403
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    .line 404
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 406
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->consoleNeedRefresh:Z

    if-eqz p1, :cond_108

    .line 407
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->refreshLogView()V
    :try_end_103
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception p1

    .line 412
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_108
    :goto_108
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 890
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->countCameraStatus:I

    .line 892
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 893
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_iframe:J

    goto :goto_17

    .line 895
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_bframe:J

    .line 897
    :goto_17
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v7

    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y:[B

    iget-object v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->y_len:[I

    iget-object v10, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u:[B

    iget-object v11, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->u_len:[I

    iget-object v12, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v:[B

    iget-object v13, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->v_len:[I

    invoke-virtual/range {v5 .. v13}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_52

    .line 900
    new-array p1, v2, [I

    .line 901
    new-array v1, v2, [I

    .line 902
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v3, p1, v1}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 903
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 904
    iput v2, v3, Landroid/os/Message;->what:I

    .line 905
    aget p1, p1, v0

    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 906
    aget p1, v1, v0

    iput p1, v3, Landroid/os/Message;->arg2:I

    .line 907
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_98

    :cond_52
    if-ltz v1, :cond_98

    .line 911
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_iframe:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_92

    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_bframe:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getPar3()I

    move-result v0

    if-eq v0, v2, :cond_92

    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_bframe:J

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->index_iframe:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_92

    .line 912
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 916
    :cond_92
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_98
    :goto_98
    return-void
.end method

.method public JSCallNative(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 659
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-----:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "body"

    .line 661
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 662
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const-string v2, "id"

    .line 663
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 664
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3e

    .line 666
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 668
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 224
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_preview:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_video:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_pro:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_enlarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_shrink:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 237
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 250
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 251
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05ac

    .line 252
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_save:Landroid/widget/Button;

    const v0, 0x7f0a05ab

    .line 253
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    const v0, 0x7f0a05a9

    .line 254
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_preview:Landroid/widget/Button;

    const v0, 0x7f0a05aa

    .line 255
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_pro:Landroid/widget/Button;

    const v0, 0x7f0a01aa

    .line 256
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview:Landroid/widget/TextView;

    const v0, 0x7f0a01ab

    .line 257
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_console:Landroid/widget/TextView;

    const v0, 0x7f0a01ac

    .line 258
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01a9

    .line 259
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_container:Landroid/widget/RelativeLayout;

    .line 260
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 261
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    const v0, 0x7f0a05ad

    .line 262
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_video:Landroid/widget/ImageButton;

    const v0, 0x7f0a01b0

    .line 263
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    const v0, 0x7f0a01af

    .line 264
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_videoView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01ad

    .line 265
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_enlarge:Landroid/widget/ImageButton;

    const v0, 0x7f0a01ae

    .line 266
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_shrink:Landroid/widget/ImageButton;

    const v0, 0x7f0a01b1

    .line 267
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view_bg:Landroid/widget/ImageView;

    .line 268
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 269
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initWebView()V

    return-void
.end method

.method public makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .line 645
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cmd"

    .line 646
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    .line 647
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "body"

    .line 648
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p1

    .line 651
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public native2JS(Ljava/lang/String;)V
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 833
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->stopProgram()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_b6

    packed-switch p1, :pswitch_data_ba

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_c2

    goto/16 :goto_b9

    .line 967
    :pswitch_15
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_video:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 968
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_videoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_28

    .line 970
    :cond_23
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_videoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 972
    :goto_28
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_video:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_b9

    :pswitch_35
    const/16 p1, 0x101

    const-string v0, "saveCodeReq"

    .line 955
    invoke-virtual {p0, v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 956
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 959
    :pswitch_46
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f11005a

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 961
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->runScratch()V

    goto :goto_b9

    .line 962
    :cond_70
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->top_scratch_run:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110064

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 963
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->stopScratch()V

    goto :goto_b9

    .line 946
    :pswitch_8b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_a8

    const/16 p1, 0x100

    const-string v2, "getCodeReq"

    .line 947
    invoke-virtual {p0, v2, p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->makeJson(Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 948
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->native2JS(Ljava/lang/String;)V

    .line 949
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b9

    .line 951
    :cond_a8
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_preview_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b9

    .line 978
    :pswitch_ae
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->shrink()V

    goto :goto_b9

    .line 975
    :pswitch_b2
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->enlarge()V

    goto :goto_b9

    .line 942
    :cond_b6
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->stopProgram()V

    :cond_b9
    :goto_b9
    :pswitch_b9
    return-void

    :pswitch_data_ba
    .packed-switch 0x7f0a01ad
        :pswitch_b2
        :pswitch_ae
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x7f0a05a9
        :pswitch_8b
        :pswitch_b9
        :pswitch_46
        :pswitch_35
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 140
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 275
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 276
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->destroyWebView()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 310
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 311
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 312
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCheckeStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 315
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 317
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkDefaultWiFiDirectDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_22

    .line 318
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 320
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    .line 321
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->stopCamera()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 293
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 294
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 295
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 297
    :cond_14
    new-instance v0, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    .line 298
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->w:I

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderInit(II)I

    .line 299
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->startCamera()V

    .line 300
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkStauts()V

    .line 301
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_42

    :cond_3a
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->isShowVideo:Z

    .line 303
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->activity_web_surface_view_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    :cond_42
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkWiFiDirect()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    .line 145
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpContentView()V

    const v0, 0x7f0d0051

    .line 146
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 219
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpView()V
    .registers 3

    .line 151
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->type:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->fileName:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->type:Ljava/lang/String;

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 154
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scratch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->newFile:Ljava/io/File;

    .line 157
    :cond_39
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initView()V

    .line 158
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initEvent()V

    .line 159
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initHandler()V

    return-void
.end method
