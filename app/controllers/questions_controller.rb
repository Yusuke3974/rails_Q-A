class QuestionsController < ApplicationController
  # 質問一覧画面
  def index
  end

  # 質問詳細画面
  def show
  end

  # 質問の作成
  def new
      @question = Question.new
  end

  # 質問の登録
  def create
    # 初期化
    @question = Question.new(question_params)
    #  保存
    if @question.save
      redirect_to @question, notice: "質問を登録しました"
    else
      render 'new'
    end
  end

  # 質問の編集
  def edit
  end

  # 質問の更新
  def update
  end

  # 質問の削除
  def destroy
  end

  private
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
