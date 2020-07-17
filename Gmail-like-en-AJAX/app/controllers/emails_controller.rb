class EmailsController < ApplicationController

    def index
        @emails = Email.order(:id).all
    end

    def create
        Email.create(
            object: Faker::Book.title,
            body: Faker::Lorem.paragraph(sentence_count: 12),
            read: false
        )

        redirect_to emails_url
    end

    def show
        @email = Email.find(params[:id])

        respond_to do |format|
            # format.html { redirect_to emails_path }
            format.js do
                @email.update(read: true)
            end
        end
    end

    def update
        respond_to do |format|
            # format.html { redirect_to emails_path }
            format.js do
                @email = Email.find(params[:id])
                @email.update(read: false)
            end
        end
    end

    def destroy
        @email = Email.find(params[:id])

        respond_to do |format|
            # format.html { redirect_to emails_path }
            format.js do
                @email.destroy
            end
        end
    end

end
