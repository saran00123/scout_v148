.class public Lcom/pilotlab/rollereye/CustomerView/ConnectView;
.super Landroid/widget/RelativeLayout;
.source "ConnectView.java"


# instance fields
.field private customer_connectview_battery_img:Landroid/widget/ImageView;

.field private customer_connectview_connect_battery_ly:Landroid/widget/LinearLayout;

.field private customer_connectview_connect_mode_ly:Landroid/widget/LinearLayout;

.field private customer_connectview_connect_wifi_ly:Landroid/widget/LinearLayout;

.field private customer_connectview_wifi_mode:Landroid/widget/ImageView;

.field private customer_connectview_wifi_status_img:Landroid/widget/ImageView;

.field private customer_connectview_wifi_status_tv:Landroid/widget/TextView;

.field private isConnect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f0d0064

    .line 52
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0248

    .line 54
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_mode_ly:Landroid/widget/LinearLayout;

    const p1, 0x7f0a024c

    .line 55
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_tv:Landroid/widget/TextView;

    const p1, 0x7f0a024b

    .line 56
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const p1, 0x7f0a0246

    .line 57
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const p1, 0x7f0a024a

    .line 58
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_mode:Landroid/widget/ImageView;

    const p1, 0x7f0a0247

    .line 59
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_battery_ly:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0249

    .line 60
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_wifi_ly:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public Connect()V
    .registers 4

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_mode_ly:Landroid/widget/LinearLayout;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_wifi_ly:Landroid/widget/LinearLayout;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_battery_ly:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v2, 0x7f0801af

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_tv:Landroid/widget/TextView;

    const v2, 0x7f110013

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_tv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_mode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getBattery()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_50

    .line 78
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getBattery()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setBattery(I)V

    .line 79
    :cond_50
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getBatteryCharge()I

    move-result v0

    if-eq v0, v1, :cond_65

    .line 80
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getBatteryCharge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setBatteryCharge(I)V

    .line 81
    :cond_65
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getWifiSignal()I

    move-result v0

    if-eq v0, v1, :cond_7a

    .line 82
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getWifiSignal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setWiFi(I)V

    :cond_7a
    return-void
.end method

.method public DisConnect()V
    .registers 5

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    .line 87
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_mode_ly:Landroid/widget/LinearLayout;

    const v2, 0x7f080115

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 88
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_wifi_ly:Landroid/widget/LinearLayout;

    const v2, 0x7f08011c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 89
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_connect_battery_ly:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v3, 0x7f0801b1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_tv:Landroid/widget/TextView;

    const v3, 0x7f11001c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_mode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isConnect()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setBattery(I)V
    .registers 3

    const/16 v0, 0x4b

    if-le p1, v0, :cond_d

    .line 99
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const v0, 0x7f080105

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_31

    :cond_d
    const/16 v0, 0x32

    if-le p1, v0, :cond_1a

    .line 101
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const v0, 0x7f080104

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_31

    :cond_1a
    const/16 v0, 0x19

    if-le p1, v0, :cond_27

    .line 103
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const v0, 0x7f080103

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_31

    :cond_27
    if-gt p1, v0, :cond_31

    .line 105
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public setBatteryCharge(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 133
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_battery_img:Landroid/widget/ImageView;

    const v0, 0x7f080106

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method public setWiFi(I)V
    .registers 3

    const/4 v0, 0x4

    .line 109
    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_12

    .line 111
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v0, 0x7f0801ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 113
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v0, 0x7f0801ad

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    :cond_1e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2a

    .line 115
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v0, 0x7f0801ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    .line 117
    :cond_2a
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_status_img:Landroid/widget/ImageView;

    const v0, 0x7f0801af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_32
    return-void
.end method

.method public setWiFiMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V
    .registers 3

    .line 123
    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_d

    .line 124
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_mode:Landroid/widget/ImageView;

    const v0, 0x7f0801b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 126
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->customer_connectview_wifi_mode:Landroid/widget/ImageView;

    const v0, 0x7f0801b0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_15
    return-void
.end method
