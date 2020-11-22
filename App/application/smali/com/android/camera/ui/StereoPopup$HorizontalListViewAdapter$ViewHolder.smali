.class Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StereoPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->this$1:Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;Lcom/android/camera/ui/StereoPopup$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method
