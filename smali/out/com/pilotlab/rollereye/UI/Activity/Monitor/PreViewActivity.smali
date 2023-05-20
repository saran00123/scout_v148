.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "PreViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment$OnFragmentInteractionListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_pre_view_topbar:Landroid/widget/RelativeLayout;

.field private activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

.field private center_title:Landroid/widget/TextView;

.field private current_position:I

.field private layout_left:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

.field private top_album_delete:Landroid/widget/ImageButton;

.field private top_album_download:Landroid/widget/ImageButton;

.field private top_album_share:Landroid/widget/ImageButton;

.field private total_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "PreViewActivity"

    .line 55
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->TAG:Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->deleteRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    return p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    return p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->center_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private deleteRecord()V
    .registers 6

    .line 214
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_DELETE_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 218
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "id"

    .line 219
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v2

    .line 221
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    :goto_1f
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_33

    .line 224
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 227
    :cond_33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_4d
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_LOCAL_DATA_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remove_record_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->notifyDataSetChanged()V

    .line 239
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_7b

    goto :goto_83

    .line 241
    :cond_7b
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    if-lez v0, :cond_c2

    add-int/lit8 v0, v0, -0x1

    .line 242
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    .line 248
    :goto_83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 249
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->center_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    .line 251
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 244
    :cond_c2
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 3

    .line 101
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_share:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 87
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0135

    .line 88
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0448

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05a3

    .line 90
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_share:Landroid/widget/ImageButton;

    const v0, 0x7f0a05a1

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_delete:Landroid/widget/ImageButton;

    const v0, 0x7f0a05a2

    .line 92
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0210

    .line 94
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    .line 95
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_143

    const v0, 0x7f11003e

    packed-switch p1, :pswitch_data_148

    goto/16 :goto_146

    .line 175
    :pswitch_11
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v1, :cond_88

    .line 176
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;-><init>(Landroid/app/Activity;)V

    .line 178
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "video/*"

    .line 181
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v1

    .line 182
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object p1

    const-string v1, "Share Video"

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    goto :goto_7f

    :cond_6c
    const-string v1, "image/*"

    .line 186
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v1

    .line 187
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object p1

    const-string v1, "Share Image"

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    .line 189
    :goto_7f
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->build()Lcom/pilotlab/rollereye/CustomerView/Share;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/Share;->shareBySystem()V

    goto/16 :goto_146

    :cond_88
    const p1, 0x7f1102ac

    .line 191
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$5;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_146

    .line 200
    :pswitch_a4
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_146

    .line 201
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->saveMediaGallay(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-lez p1, :cond_cb

    .line 203
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f110227

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_146

    .line 205
    :cond_cb
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f110226

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_146

    .line 143
    :pswitch_dc
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const v1, 0x7f110219

    if-eqz p1, :cond_12b

    .line 144
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_113

    const p1, 0x7f11021a

    .line 145
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    const p1, 0x7f11003a

    .line 151
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$2;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_146

    .line 158
    :cond_113
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$3;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_146

    .line 166
    :cond_12b
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$4;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_146

    .line 140
    :cond_143
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->finish()V

    :cond_146
    :goto_146
    return-void

    nop

    :pswitch_data_148
    .packed-switch 0x7f0a05a1
        :pswitch_dc
        :pswitch_a4
        :pswitch_11
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 114
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onFragmentInteraction(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_10

    .line 261
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 120
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0041

    .line 64
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 75
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "record_position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    .line 77
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "record_list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    .line 78
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 79
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->center_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance p1, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->total_record_list:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    .line 81
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 82
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->current_position:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->initView()V

    .line 70
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->initEvent()V

    return-void
.end method
